defmodule Test.MyDomain.MyResource do
  use Ash.Resource, domain: Test.MyDomain

  if false do
    code_interface do
      define :create_1
      define :create_2
      define :create_3
      define :create_4
      define :create_5
      define :create_6
      define :create_7
      define :create_8
      define :create_9
      define :create_10
      define :create_11
      define :create_12
      define :create_13
      define :create_14
      define :create_15
      define :create_16
      define :create_17
      define :create_18
      define :create_19
      define :create_20
    end
  end

  actions do
    create :create_1
    create :create_2
    create :create_3
    create :create_4
    create :create_5
    create :create_6
    create :create_7
    create :create_8
    create :create_9
    create :create_10
    create :create_11
    create :create_12
    create :create_13
    create :create_14
    create :create_15
    create :create_16
    create :create_17
    create :create_18
    create :create_19
    create :create_20
  end

  attributes do
    uuid_primary_key :id

    attribute :subject, :string
  end
end
