#use Data::ICal::Grammar;
use Data::ICal;

#say Data::ICal::Grammar.parse(q:to/EOCAL/, :rule('section'), :actions(Data::ICal::Actions)).made.perl;
my $ical = Data::ICal.new;
$ical.parse(q:to/EOCAL/);
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//hacksw/handcal//NONSGML v1.0//EN
BEGIN:VEVENT
UID:uid1@example.com
DTSTAMP:19970714T170000Z
ORGANIZER;CN=John Doe:MAILTO:john.doe@example.com
DTSTART:19970714T170000Z
DTEND:19970715T035959Z
SUMMARY:Bastille Day Party
END:VEVENT
END:VCALENDAR
EOCAL

say $ical.events[0].dtstart;
