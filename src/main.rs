extern crate clap;
extern crate dogstatsd;

use clap::*;
use dogstatsd::*;

fn get_client() -> Client {
    Client::new(Options::default())
        .expect("Could not create Datadog client")
}

fn run_send_event(data: &ArgMatches) {
    let title = data.value_of("title").unwrap();
    let text = data.value_of("text").unwrap();

    match get_client().event(title, text, &["datadog-cli"]) {
        Ok(_) => println!("Sent event with title {}", title),
        Err(e) => println!("Failed to send event with title {}: {}", title, e),
    }
}

fn main() {
    let send_event = SubCommand::with_name("send-event")
        .about("Send a single event to dogstatsd")
        .arg(Arg::with_name("title")
             .help("title for the event")
             .required(true))
        .arg(Arg::with_name("text")
             .help("text for the event")
             .required(true));

    let matches = App::new("datadog-cli")
        .version("0.1")
        .author("Vincent Ambo")
        .about("Simple dogstatsd CLI client")
        .subcommand(send_event)
        .get_matches();

    match matches.subcommand() {
        ("send-event", Some(data)) => run_send_event(data),
        _ => unimplemented!(),
    }
}
