class User < ApplicationRecord
  include EnjuCirculation::EnjuUser
  include EnjuMessage::EnjuUser
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none
  include EnjuSeed::EnjuUser

end
Item.include(EnjuLibrary::EnjuItem)
User.include(EnjuBiblio::EnjuUser)
Accept.include(EnjuCirculation::EnjuAccept)
Basket.include(EnjuCirculation::EnjuBasket)
CarrierType.include(EnjuCirculation::EnjuCarrierType)
Manifestation.include(EnjuCirculation::EnjuManifestation)
Item.include(EnjuCirculation::EnjuItem)
Profile.include(EnjuCirculation::EnjuProfile)
UserGroup.include(EnjuCirculation::EnjuUserGroup)
Withdraw.include(EnjuCirculation::EnjuWithdraw)
Manifestation.include(EnjuSubject::EnjuManifestation)
Manifestation.include(EnjuManifestationViewer::EnjuManifestation)
Manifestation.include(EnjuNdl::EnjuManifestation)
