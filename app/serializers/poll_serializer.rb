class PollSerializer < ActiveModel::Serializer

  attributes :options

  def initialize(serialize)
      @serialize = serialize
  end

  def serialize
      options = {
          except: [:created_at, :updated_at]
      }
      @serialize.to_json(options)
  end

end
