class TestsController < ApplicationController

  def index
    @tests = Test.all
  end
  def new
    @test = Test.new
  end 
  def create
    @test = Test.create(test_params)
    redirect_to tests_path
  end

  private

  def test_params
    params.require(:test).permit(:question, :answer)
  end

end
