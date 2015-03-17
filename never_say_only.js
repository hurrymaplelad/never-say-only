function createOnlyError(blockName) {
  return new Error("never-say-only: "+blockName+".only called. This incident will be reported.")
}

if(JSON.parse(process.env.NEVER_SAY_ONLY || 'false')) {
  it.only = function() {
    throw createOnlyError('it')
  }
  describe.only = function() {
    throw createOnlyError('describe')
  }
}
