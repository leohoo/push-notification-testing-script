#!/usr/bin/perl

use strict;
use Net::APNS;

my $dev_token_495 = "ef17284d7a4d630eb2f98f2b7304bc5f9a4939928469ec44cabf2092c89f53ce"; # test dev 495
my $dev_token_iphone5 = "57fa6f23338798e204a0c5719c907edf9b927d2c6a92915e25c8dcf86738c7f2"; # iphone 5
my $dev_token_my = "080ff8cc 7d00f05f a5ccded2 91941de4 3ea8da89 2aee16f3 3de07e95 3376b61d"; # my iphone 5

my $dev_token = $dev_token_495;
$dev_token =~ s/ //g;
#echo $dev_token;

my $APNS = Net::APNS->new;
my $Notifier = $APNS->notify({
    cert   => "24log-push-dev.pem",
    key    => "24log-push-dev.pem",
     passwd => '',
});

my $message="プッシュ通知テスト";
if($#ARGV>=0){
  $message=$ARGV[0];
}

$Notifier->devicetoken($dev_token);
$Notifier->sandbox(1);
$Notifier->message($message);
$Notifier->badge(40);
$Notifier->sound('default');
$Notifier->custom({ url => '/post_detail/133' });
$Notifier->write;


