class Project < ActiveRecord::Base
  attr_accessible :number_of_participants, :status, :title, :project_members_attributes,:proposals_attributes
  validates :title, :presence => true
  validates :number_of_participants, :presence => true
  validates :status, :presence => true
  validates :status, :inclusion => {:in => %w(new participants concept approved rejected cleared complete)}
  validates_uniqueness_of :title
  belongs_to :user
  has_many :project_members
  has_many :proposals
  accepts_nested_attributes_for :project_members, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :proposals, :reject_if => :all_blank, :allow_destroy => true

end
