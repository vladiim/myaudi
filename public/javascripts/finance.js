(function() {
  $( document ).ready( function() {

    var toggleForm = function( target ) {
      type = target.data( 'type' );
      klass = target.attr( 'class' );
      type == 'variant' && klass == 'finance-calculator' ? drawVariants( target ) : '';
      form = '#' + type + '-input';
      $( form ).toggleClass( 'hidden' );
    }

    var getControl = function( type ) {
      return $( 'a.finance-calculator[data-type="' + type + '"]' );
    }

    var changeModelValue = function( target ) {
      value = target.data( 'value' );
      control = getControl( 'model' );
      control.text( value );
    }

    var changeVariantValue = function( target ) {
      variants = target.data( 'variants' );
      control = getControl( 'variant' );
      control.text( variants instanceof Array ? variants[0] : variants );
      control.attr( 'data-value', variants );
    }

    var drawVariant = function( variant ) {
      $ul = $('#variant-input ul');
      $ul.append( '<li class="list-group-item finance-calculator-variant-input" data-type="vaiant" data-value="' + variant + '">' + variant +'</li>' );
    }

    var drawVariants = function( target ) {
      variants = target.data( 'value' );
      variants = variants.split(',');
      $ul = $('#variant-input ul');
      $ul.find('li').remove();
      _.each( variants, drawVariant );
      variantInputListener();
    }

    var variantInputListener = function() {
      $( '.finance-calculator-variant-input' ).on( 'click', function( event ) {
        event.preventDefault();
        updateEstimate();
        target = $( $( event.target )[0] );
        variant = target.data( 'value' );
        control = getControl( 'variant' );
        control.text( variant );
        $( '#variant-input' ).toggleClass( 'hidden' );
      })
    }

    var minMaxNumber = function( min, max ) {
      return numberWithCommas( Math.floor( Math.random() * max ) + min );
    }

    var numberWithCommas = function( number ) {
      return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    var updateEstimate = function() {
      week = minMaxNumber( 400, 1500 );
      total = minMaxNumber( 40000, 150000 );
      $( '#estimate-week' ).text( '$' + week );
      $( '#estimate-week-old' ).text( '' );
      $( '#estimate-total' ).text( '$' + total );
      $( '#estimate-total-old' ).text( '' );
    }

    $( '.finance-calculator' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      toggleForm( target );
    })

    $( '.finance-calculator-model-input' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      changeModelValue( target );
      changeVariantValue( target );
      updateEstimate();
      toggleForm( target );
    })

    $( '.finance-calculator-close' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      toggleForm( target );
    })

    $( '#suburb-search' ).on( 'focus', function( event ) {
      data = [];
      value = 1000;
      _.times( 7000, function( n ){ value++; data.push( value.toString() ) } );
      $( '#suburb-search' ).typeahead( { source: data, items: 15 } );
    })

    $( '#suburb-input-submit' ).on( 'click', function( event ) {
      event.preventDefault();
      suburb = $( '#suburb-search' ).val();
      control = getControl( 'suburb' );
      control.text( suburb );
      updateEstimate();
      toggleForm( target );
    })

    $( '.finance-calculator-use-input' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      use = target.data( 'value' );
      control = getControl( 'use' );
      control.text( use );
      updateEstimate();
      toggleForm( target );
    })

    $( '.finance-calculator-interest-input' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      interest = target.data( 'value' );
      control = getControl( 'interest' );
      control.text( interest );
      updateEstimate();
      toggleForm( target );
    })

    $( '.finance-calculator-years-input' ).on( 'click', function( event ) {
      event.preventDefault();
      target = $( event.target );
      years = target.data( 'value' );
      control = getControl( 'years' );
      control.text( years );
      updateEstimate();
      toggleForm( target );
    })

  })
}).call(this);