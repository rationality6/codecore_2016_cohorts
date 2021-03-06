class AnswersController < ApplicationController
  def create
    # we instantiate a new answer object based on the params we got from the
    # user. We use: params.require(:answer).permit(:body) as it's required part
    # of Rails for security reason (Strong Parameters)
    @answer = Answer.new params.require(:answer).permit(:body)

    # We fetch the question by its id which came from the URL. In the form in
    # the question/show.html.erb we used a url: question_answers_path(@question)
    # this path includes a variable :question_id which comes as part of the params
    @question = Question.friendly.find params[:question_id]

    # We associate the answer we defined above with the question we found above
    # as well. This is because we need to associate the created answer with the
    # question
    # answer.question_id = question.id
    @answer.question = @question

    # we same the answer to the database

    respond_to do |format|
      if @answer.save
        # AnswerMailer.notify_question_owner(@answer).deliver_later
        # we redirect to the question show page
        format.html { redirect_to question_path(@question), notice: 'Answer created!' }
        format.js { render :create_success }
      else
        flash[:alert] = 'Please fix errors below'
        format.html { render '/questions/show' }
        format.js { render :create_failure }
      end
    end
  end

  def destroy
    @answer = Answer.find params[:id]
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to question_path(@answer.question), notice: 'Answer deleted' }
      format.js   { render } # this renders /app/views/answers/destroy.js.erb
    end
  end

  private

  def user_vote
    @user_vote ||= @question.vote_for current_user
  end
  helper_method :user_vote
end
