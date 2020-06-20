
class Illness < ApplicationRecord
  has_many: trackings,;
IllnessApplicationRecordhas_many dependent: :destroy;
belongs_to: user;
validates: name,;
presence:
  true
  end;
