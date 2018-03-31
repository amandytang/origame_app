$(document).ready( function () {


  var $maki = $( '.maki' );

  $maki.makisu({
    selector: 'dd',
    overlap: 0.6,
    speed: 0.9
    });

  $( '.list' ).makisu( 'open' );
  $( 'dt' ).on( 'click', function() {
    $( '.list' ).makisu( 'toggle' );
  });


if (window.location.pathname == '/login' || window.location.pathname == '/' || window.location.pathname == '/users/new' || window.location.pathname == '/users' || window.location.pathname == '/designs/new' || window.location.pathname.startsWith('/designs/') == true || window.location.pathname == '/creators/new') {

  var folded = new OriDomi('.paper');
  var folded = new OriDomi('.paper', {
    vPanels:         5,     // number of panels when folding left or right (vertically oriented)
    hPanels:         3,     // number of panels when folding top or bottom
    speed:           1000,  // folding duration in ms
    ripple:          2,     // backwards ripple effect when animating
    shadingIntensity: 0.4,    // lessen the shading effect
    perspective:     800,   // smaller values exaggerate 3D distortion
    maxAngle:        40,    // keep the user's folds within a range of -40 to 40 degrees
    shading:         'soft' // change the shading type
  });

  folded.reveal(23);

  }

  $('#notice').addClass('animated slideInDown');

  $("#gallery").stalactite({
  duration: 350,                        // Duration of animation.
  easing: 'swing',                      // Easing method.
  cssPrefix: '.stalactite',             // The css naming convention.
  cssPrep: true,                        // Should stalactite structurally modify css of children?
  fluid: true,                          // Should stalactite recalculate on window resize?
  loader: '<img />',                    // The contents of the loader. Defaults to a dataURL animated gif.
  styles: {}                            // A style object to place on the child elements
  complete: function(v) { return v; }  // Callback function
  });


});
