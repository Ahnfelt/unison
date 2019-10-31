module Unison.Codebase.GitError where

import Unison.Prelude

import qualified Unison.Names3 as Names

data GitError = NoGit
              | NoRemoteRepoAt Text
              | NoLocalRepoAt FilePath
              | CheckoutFailed Text
              -- url commit Diff of what would change on merge with remote
              | PushDestinationHasNewStuff Text (Maybe Text) Names.Diff
              | SomeOtherError Text
              deriving Show

