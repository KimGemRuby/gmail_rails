class EmailController < ApplicationController
  def index
    @email = Email.all
  end

  # Optional arguments: sentence_count=3, supplemental=false, random_sentences_to_add=3
  def create
    @email = Email.create(object: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html { }
      format.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end


  def update
    @email = Email.find(params[:id])
    @email.update(object: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4), body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def read
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def unread
    @email = Email.find(params[:id])
    @email.update(read: false)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

end
