class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @people = %w[sonny micky vicario porro solank johnson]
    search = params[:person]

    if search
      @people = @people.select { |person| person.start_with? search.downcase }
    end
  end
end
