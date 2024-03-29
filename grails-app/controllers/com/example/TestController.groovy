package com.example

class TestController {

    def index = {

    render(contentType: 'text/calendar', filename: 'events') {
      calendar {
        events {
          event(start: Date.parse('dd.MM.yyyy HH:mm', '31.10.2014 14:00'), 
                   end: Date.parse('dd.MM.yyyy HH:mm', '31.10.2014 15:00'),
                   description: 'Events description', 
                   summary: 'Short info1') {
            organizer(name: 'Silvio Wangler', email: 'a@b.com')
          }
          event(start: Date.parse('dd.MM.yyyy HH:mm', '01.11.2014 14:00'), 
                  end: Date.parse('dd.MM.yyyy HH:mm', '01.11.2014 15:00'),
                  description: 'hell yes', 
                  summary: 'Short info2', 
                  location: '@home', 
                  classification: 'private'){
            organizer(name: 'Silvio Wangler', email: 'b.c@d.com')
          }
        }
      }
    }
  }
}
