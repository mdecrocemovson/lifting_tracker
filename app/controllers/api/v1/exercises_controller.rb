class Api::V1::ExercisesController < ApiController
  def index
    exercises = Exercise.all
    render json: exercises
  end
end
