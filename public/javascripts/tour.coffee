owner_tour = new Tour(
  steps: [
    {
      element: '#register_car_onboard .hero h1',
      title: 'Welcome',
      content: "This is your owner's dashboard, all your RS4's information can be found here."
    }, {
      element: '#register_car_onboard #grade-tab',
      title: 'Your grade',
      content: 'Become a better driver through our grading system.'
    }, {
      element: '#register_car_onboard #place-tab',
      title: 'Driver ranking',
      content: 'Find out your ranking on our leaderboard.'
    }, {
      element: '#register_car_onboard #trips-tab',
      title: 'Trips',
      content: 'Track every trip you take.'
    }, {
      element: '#register_car_onboard #services-tab',
      title: 'Services',
      content: 'Keep track of your Audi services and keep up your resale value.'
    }
  ]
)

$(document).ready ->
  owner_tour.init()
  owner_tour.start()