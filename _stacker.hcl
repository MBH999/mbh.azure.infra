regions {
  region "azure" {
    tags = []
    deploy_as_stack = false
  }
}

stacks {
    stack "virtual_networking" {
        tags = []
    }
}