"use strict";



(function($jQuery) {

    var $jQuery = jQuery.noConflict();


    // Fuel Cost Calculator Core
    var FuelCostCalculator = function($jQuerytarget) {

        var self = this;

        // options
        this.options = {
            throttling: false
        };

        // elements
        this.$jQuerytarget = $jQuerytarget;
        this.$jQuerymileage = this.$jQuerytarget.find('input[name="mileage"]');
        this.$jQuerympg = this.$jQuerytarget.find('input[name="mpg"]');
        this.$jQueryfuelCost = this.$jQuerytarget.find('input[name="fuel-cost"]');
        this.$jQueryeconomyRate = this.$jQuerytarget.find('input[name="economy-rate"]');
        this.$jQuerysavings = this.$jQuerytarget.find('.fuel-cost-calc__results');
        this.$jQuerysliderButtons = this.$jQuerytarget.find('.fuel-cost-calc__slider-markers button');

        // events
        this.$jQuerytarget.find('input').on('keyup change keypress', function(e) {
            // throttle key press events to make sure the user isn't seeing a constantly updating page
            var charCode = (e.which) ? e.which : e.keyCode;

            if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {

                return false;

            }



            if (!self.options.throttling) {
                // start throttle
                self.options.throttling = true;

                setTimeout(function() {
                    // kill throttle
                    self.options.throttling = false;




                    // trigger update
                    self.updateSaving();
                }, 500);
            }
        });

        this.$jQuerysliderButtons.on('click', this.updateSlider.bind(this));

    };

    FuelCostCalculator.prototype.updateSaving = function() {

        // if any of the inputs are empty
        // or the value is 0
        if (this.$jQuerymileage.val() === '' || this.$jQuerympg.val() === '' || this.$jQueryfuelCost.val() === '' || parseFloat(this.$jQuerymileage.val()) === 0 || parseFloat(this.$jQuerympg.val()) === 0 || parseFloat(this.$jQueryfuelCost.val()) === 0) {
            // hide the results
            this.hideSavings();

            // bail out
            return;
        }

        // cache the form vals
        var economyRate = (parseFloat(this.$jQueryeconomyRate.val()) / 100) + 1; // gives us a usable number for calculating percentage change - e.g. 2% -> 1.02

        // calculate the annual fuel cost
        var fuelCostPerYear = ((parseFloat(this.$jQuerymileage.val()) / parseFloat(this.$jQuerympg.val())) * 4.54609) * parseFloat(this.$jQueryfuelCost.val());
        // calculate the potential saving
        var totalSaving = fuelCostPerYear - (fuelCostPerYear / economyRate);

        this.showSavings(totalSaving.toFixed(2));

    };

    FuelCostCalculator.prototype.showSavings = function(totalSaving) {

        // update the saving value
        this.$jQuerysavings.find('strong').html(currencySymbol + totalSaving);
        // show the savings container
        this.$jQuerysavings.addClass('fuel-cost-calc__results_showing');

    };

    FuelCostCalculator.prototype.hideSavings = function() {

        // hide the savings container
        this.$jQuerysavings.removeClass('fuel-cost-calc__results_showing');

    };


    FuelCostCalculator.prototype.updateSlider = function(e) {

        // stop the button triggering the form
        e.preventDefault();

        this.$jQueryeconomyRate
            // set the new slider value
            .val(this.$jQuerysliderButtons.toArray().indexOf(e.currentTarget))
            // trigger a change event
            .trigger('change');

    };


    // Page init
    var fuelCostCalculators = $jQuery('.fuel-cost-calc');
    for (var i = 0, l = fuelCostCalculators.length; i < l; i++) {
        new FuelCostCalculator($jQuery(fuelCostCalculators[i]));
    }

})(jQuery);
