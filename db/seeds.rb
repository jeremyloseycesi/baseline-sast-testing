# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#

# Email constants to avoid duplication
JACK_EMAIL = "jack@metacorp.com"
JIM_EMAIL = "jim@metacorp.com"
MIKE_EMAIL = "mike@metacorp.com"
KEN_EMAIL = "ken@metacorp.com"

users = [
  {
    email: "admin@metacorp.com",
    admin: true,
    password: "admin1234",
    password_confirmation: "admin1234",
    first_name: "Admin",
    last_name: "",
  },

  {
    email: "jmmastey@metacorp.com",
    admin: false,
    password: "railsgoat!",
    password_confirmation: "railsgoat!",
    first_name: "Joseph",
    last_name: "Mastey",
  },

  {
    email: JACK_EMAIL,
    admin: false,
    password: "yankeessuck",
    password_confirmation: "yankeessuck",
    first_name: "Jack",
    last_name: "Mannino",
  },

  {
    email: JIM_EMAIL,
    admin: false,
    password: "alohaowasp",
    password_confirmation: "alohaowasp",
    first_name: "Jim",
    last_name: "Manico",
  },

  {
    email: MIKE_EMAIL,
    admin: false,
    password: "motocross1445",
    password_confirmation: "motocross1445",
    first_name: "Mike",
    last_name: "McCabe",
  },

  {
    email: KEN_EMAIL,
    admin: false,
    password: "citrusblend",
    password_confirmation: "citrusblend",
    first_name: "Ken",
    last_name: "Johnson",
  },

  {
    email: "admin2@metacorp.com",
    admin: false,
    password: "adminadmin",
    password_confirmation: "adminadmin",
    first_name: "Admin2",
    last_name: "",
  }
]

retirements = [
  {
    user: JACK_EMAIL,
    employee_contrib: "1000",
    employer_contrib: "2000",
    total: "4500"
  },
  {
    user: JIM_EMAIL,
    employee_contrib: "8000",
    employer_contrib: "16000",
    total: "30000"
  },
  {
    user: MIKE_EMAIL,
    employee_contrib: "10000",
    employer_contrib: "20000",
    total: "40000"
  },
  {
    user: KEN_EMAIL,
    employee_contrib: "3000",
    employer_contrib: "6000",
    total: "12500"
  }
]

paid_time_off = [
  {
    user: JACK_EMAIL,
    sick_days_taken: 2,
    sick_days_earned: 5,
    pto_taken: 5,
    pto_earned: 30
  },
  {
    user: JIM_EMAIL,
    sick_days_taken: 3,
    sick_days_earned: 6,
    pto_taken: 3,
    pto_earned: 20
  },
  {
    user: MIKE_EMAIL,
    sick_days_taken: 2,
    sick_days_earned: 5,
    pto_taken: 5,
    pto_earned: 30
  },
  {
    user: KEN_EMAIL,
    sick_days_taken: 1,
    sick_days_earned: 5,
    pto_taken: 10,
    pto_earned: 30
  }
]

schedule = [
  {
    user: JACK_EMAIL,
    date_begin: Date.new(2014, 7, 30),
    date_end: Date.new(2014, 8, 2),
    event_type: "pto",
    event_desc: "vacation to france",
    event_name: "My 2014 Vacation"
  },
  {
    user: JIM_EMAIL,
    date_begin: Date.new(2013, 9, 1),
    date_end: Date.new(2013, 9, 12),
    event_type: "pto",
    event_desc: "Going Home to see folks",
    event_name: "Visit Parents"
  },
  {
    user: MIKE_EMAIL,
    date_begin: Date.new(2013, 9, 13),
    date_end: Date.new(2013, 9, 20),
    event_type: "pto",
    event_desc: "Taking kids to Grand Canyon",
    event_name: "AZ Trip"
  },
  {
    user: KEN_EMAIL,
    date_begin: Date.new(2013, 12, 20),
    date_end: Date.new(2013, 12, 30),
    event_type: "pto",
    event_desc: "Xmas Staycation",
    event_name: "Christmas Leave"
  }
]

work_info = [
  {
    user: JACK_EMAIL,
    income: "$50,000",
    bonuses: "$10,000",
    years_worked: 2,
    SSN: "555-55-5555",
    DoB: "01-01-1980"
  },
  {
    user: JIM_EMAIL,
    income: "$40,000",
    bonuses: "$10,000",
    years_worked: 1,
    SSN: "333-33-3333",
    DoB: "01-01-1979"
  },
  {
    user: MIKE_EMAIL,
    income: "$60,000",
    bonuses: "$12,000",
    years_worked: 3,
    SSN: "444-44-4444",
    DoB: "01-01-1981"
  },
  {
    user: KEN_EMAIL,
    income: "$30,000",
    bonuses: "7,000",
    years_worked: 1,
    SSN: "222-22-2222",
    DoB: "01-01-1982"
  }
]

performance = [
  {
    user: JACK_EMAIL,
    reviewer: 1,
    comments: "Great job! You are my hero",
    date_submitted: Date.new(2012, 01, 01),
    score: 5
  },
  {
    user: JACK_EMAIL,
    reviewer: 1,
    comments: "Once again, you've done a great job this year. We greatly appreciate your hard work.",
    date_submitted: Date.new(2013, 01, 01),
    score: 5
  },
  {
    user: JIM_EMAIL,
    reviewer: 1,
    comments: "Great worker, great attitude for this newcomer!",
    date_submitted: Date.new(2013, 01, 01),
    score: 5
  },
  {
    user: MIKE_EMAIL,
    reviewer: 1,
    comments: "Wow, right out of the gate we've been very impressed but unfortunately, our system doesn't allow us to give you a full 5.0 because other ppl have gotten 5.0 ratings.",
    date_submitted: Date.new(2011, 01, 01),
    score: 4
  },
  {
    user: MIKE_EMAIL,
    reviewer: 1,
    comments: "We highly recommend promotion for this employee! Consistent performer with proven leadership qualities.",
    date_submitted: Date.new(2012, 01, 01),
    score: 5
  },
  {
    user: MIKE_EMAIL,
    reviewer: 1,
    comments: "Right out of the gate, Mike has made incredible moves as a newly appointed leader. His only improvement would be more cowbell. Not enough of it.",
    date_submitted: Date.new(2013, 01, 01),
    score: 4
  },
  {
    user: KEN_EMAIL,
    reviewer: 1,
    comments: "Ehh, you are okay, we will let you stay..... barely",
    date_submitted: Date.new(2013, 01, 01),
    score: 2
  }
]

messages = [
  {
    creator: KEN_EMAIL,
    receiver: JACK_EMAIL,
    message: "Your benefits have been updated.",
    read: false
  },
  {
    creator: MIKE_EMAIL,
    receiver: JIM_EMAIL,
    message: "Please update your profile.",
    read: false
  },
  {
    creator: JIM_EMAIL,
    receiver: MIKE_EMAIL,
    message: "Welcome to Railsgoat.",
    read: false
  },
  {
    creator: JACK_EMAIL,
    receiver: KEN_EMAIL,
    message: "Hello friend.",
    read: false
  }
]

user_map = users.each_with_object({}) do |user_info, h|
  h[user_info[:email]] = User.create!(user_info).id
end

retirements.each do |r|
  r[:user_id] = user_map.fetch(r.delete(:user))
  Retirement.create!(r)
end

paid_time_off.each do |pto|
  pto[:user_id] = user_map.fetch(pto.delete(:user))
  PaidTimeOff.create!(pto)
end

schedule.each do |event|
  event[:user_id] = user_map.fetch(event.delete(:user))
  Schedule.create!(event)
end

performance.each do |perf|
  perf[:user_id] = user_map.fetch(perf.delete(:user))
  Performance.create!(perf)
end

messages.each do |message|
  message[:creator_id] = user_map.fetch(message.delete(:creator))
  message[:receiver_id] = user_map.fetch(message.delete(:receiver))
  Message.create!(message)
end

work_info.each do |wi|
  wi[:user_id] = user_map.fetch(wi.delete(:user))
  WorkInfo.create!(wi)
end