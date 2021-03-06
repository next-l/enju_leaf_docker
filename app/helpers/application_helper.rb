module ApplicationHelper
  include EnjuLeaf::ApplicationHelper
  include EnjuBiblio::ApplicationHelper if defined?(EnjuBiblio)
  if defined?(EnjuManifestationViewer)
    include EnjuManifestationViewer::ApplicationHelper
    include EnjuManifestationViewer::BookJacketHelper
  end
end
