class Project < ActiveRecord::Base
  attr_accessible :number_of_participants, :status, :title
  validates :title, :presence => true
  validates :number_of_participants, :presence => true
  validates :status, :presence => true
  validates :status, :inclusion => {:in => %w(new participants concept approved rejected cleared complete)}
  validates_uniqueness_of :title
  belongs_to :user
  has_many :project_members
  accepts_nested_attributes_for :project_members, :reject_if => :all_blank, :allow_destroy => true

end
