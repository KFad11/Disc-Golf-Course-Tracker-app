# frozen_string_literal: true

class DiscGolfer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :visits
  has_many :courses, through: :visits

  validates_presence_of :name
end
