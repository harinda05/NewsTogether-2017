<?php

class home extends CI_Controller {
	public function index() {

// loading news data to the homepage view

		$this->load->database();
		$this->load->model('CRUD/select');

		$data1['rec_newsinfo'] = $this->select->select_received();

		$data2['as_newsinfo'] = $this->select->select_asigned();

		$data3['p_newsinfo'] = $this->select->select_pending();

		$new_array = array_merge($data1, $data2, $data3);
		$this->load->view('home', $new_array);

	}

// load date to particular news views
	public function view_news($newsid) {
		$news_id = $newsid;

		$this->load->model('CRUD/select');
		$result = $this->select->get_status($news_id)->row();
		$status = $result->status;
		// var_dump($status);
		if ($status == 'completed') {

			$data['viewnews'] = $this->select->get_all_completed($news_id);
			$this->load->view('view_and_accpet', $data);
		} elseif ($status == 'asigned') {

			$data['viewnews'] = $this->select->get_all_asigned($news_id);
			$this->load->view('update', $data);
		} elseif ($status == 'pending') {

			$data['viewnews'] = $this->select->get_all_pending($news_id);
			$this->load->view('update', $data);
		} else {
			echo 'restricted page';
		}

	}

	//update asigned

	public function update($newsid) {
		$news_id = $newsid;
		$title = $this->input->get('title');
		$venue = $this->input->get('venue');
		$description = $this->input->get('description');
		$date = $this->input->get('date');
		$time = $this->input->get('time');
		$district = $this->input->get('district');
		$due_date = $this->input->get('due_date');
		$due_time = $this->input->get('due_time');

		$this->load->model('CRUD/update');
		$this->update->update_model($news_id, $title, $venue, $description, $date, $time, $district, $due_date, $due_time);
		$this->session->set_flashdata('update_msg', 'Successfully Updated');

		// redirect to homepage
		redirect('home/index');

	}

//accept recieved News as telecasted news  & calculate payment for each news

	public function accept_ctrl($id) {

		$news_id = $id;
		$data = $this->input->get('tele');
		$tele_date = $this->input->get('tele_date');

		//calculating payment start
		$this->load->model('CRUD/select');
		$result1 = $this->select->get_Ada_Derana_payment()->row();
		$AD = $result1->payment_per_news;

		$result2 = $N24 = $this->select->get_24_7_payment()->row();
		$N24 = $result2->payment_per_news;

		if ($data[0] == 'Yes' AND $data[1] == 'Yes') {
			$payment = $AD + $N24;
		} elseif ($data[0] == 'Yes') {
			$payment = $AD;
		} elseif ($data[1] == 'Yes') {
			$payment = $N24;
		}

		//calculating payment end

		$data_array = array(
			'news_id' => $news_id,
			'telecast_date' => $tele_date,
			'Ada_Derana' => $data[0],
			'News_24/7' => $data[1],
			'payment' => $payment,
		);

		$this->load->model('CRUD/update');
		$this->update->accept_model($news_id, $data_array);

		// redirect to homepage

		$this->session->set_flashdata('accept_msg', 'News accepted');

		// redirect to homepage
		redirect('home/index');

	}

//reject Completed News

	public function reject_ctrl($id) {

		$news_id = $id;
		$reason = $this->input->get('reason');

		$data_array = array(
			'news_id' => $news_id,
			'reason' => $reason,
		);

		$this->load->model('CRUD/update');
		$this->update->reject_model($news_id, $data_array);

		$this->session->set_flashdata('reject_msg', 'News Rejected');

		// redirect to homepage
		redirect('home/index');

	}

	public function delete_news($id) {

		$news_id = $id;
		$this->load->model('CRUD/delete');
		$this->delete->delete_model($news_id);

		$this->session->set_flashdata('dlt_msg', 'News Successfully Deleted');

		// redirect to homepage
		redirect('home/index');

	}

// FTP DOWNLOAD FILE ---------------------------------------------

	public function download_ftp($file_name) {
		$this->load->library('ftp');

		$config['hostname'] = '13.127.66.214';
		$config['username'] = 'Admin';
		$config['password'] = 'admin';
		$config['port'] = 21;
		$config['passive'] = FALSE;
		$config['debug'] = TRUE;

		$this->ftp->connect($config);

		$found_file = FALSE;
		$files = $this->ftp->list_files();
		
		if (count($files) > 0) {
			foreach ($files as $f) {
				if ($f == './' . $file_name) {
					$found_file = TRUE;
					break;
				}
			}
		}
	
		if (!$found_file) {
			echo 'file not found';
		}

		if ($found_file) {

			echo '<script type="text/javascript">
		alert("Click OK to download file. You will be notified when the download is completed. Dont refresh the page until");
			</script>';

			$result = $this->ftp->download($file_name, 'C:/xampp/htdocs/newsapp/FTP/' . $file_name);
			if ($result == FALSE) {
				echo 'file not downloaded';
			}

			if ($result == TRUE) {


				echo '<script type="text/javascript">

				window.location = "http://35.154.251.230/newsapp/ftp/'.$file_name.'";
			

			</script>';

				
			}
		}

	}
}

?>







