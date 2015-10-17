module Spree
  class SupplierController < Spree::BaseController

    before_action :load_model, only: [:show, :products]

    # Page with list of all suppliers.
    def index
      @suppliers = Spree::Supplier::all
    end

    private

      def load_model
        @supplier = Spree::Supplier::find_by(slug: params[:id])
      end

  end
end
