<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $request;
    public $admin;

    public function __construct($request, $admin)
    {
        $this->request = $request;
        $this->admin = $admin;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $data = [
            'request' => $this->request,
            'admin' => $this->admin
        ];

        return $this->from($this->request->email, $this->request->name)
            ->to($this->admin->email, $this->admin->name)
            ->view('welcome', $data);
    }
}
