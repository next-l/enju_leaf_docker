class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none

  include EnjuCirculation::EnjuUser
  include EnjuMessage::EnjuUser
  include EnjuLibrary::EnjuUser
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, #:validatable,
      :lockable, lock_strategy: :none, unlock_strategy: :none

end
Item.include(EnjuLibrary::EnjuItem)
Profile.include(EnjuLibrary::EnjuProfile)
Accept.include(EnjuCirculation::EnjuAccept)
Basket.include(EnjuCirculation::EnjuBasket)
CarrierType.include(EnjuCirculation::EnjuCarrierType)
Manifestation.include(EnjuCirculation::EnjuManifestation)
Item.include(EnjuCirculation::EnjuItem)
Profile.include(EnjuCirculation::EnjuProfile)
UserGroup.include(EnjuCirculation::EnjuUserGroup)
Withdraw.include(EnjuCirculation::EnjuWithdraw)
Manifestation.include(EnjuSubject::EnjuManifestation)
Item.include(EnjuInventory::EnjuItem)
Manifestation.include(EnjuManifestationViewer::EnjuManifestation)
Manifestation.include(EnjuNdl::EnjuManifestation)
