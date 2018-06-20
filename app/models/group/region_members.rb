# encoding: utf-8

#  Copyright (c) 2012-2013, Puzzle ITC GmbH. This file is part of
#  hitobito_generic and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_generic.

class Group::RegionMembers < Group::Members

  children Group::RegionMembers

  class ActiveMember < Role::ActiveMember
  end

  class PassiveMember < Role::PassiveMember
  end

  self.default_role = ActiveMember
  roles ActiveMember, PassiveMember
end
