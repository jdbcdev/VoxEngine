let project = new Project('KhaPoC Engine');
project.addAssets('Assets/**');
project.addShaders('Shaders/**');
project.addSources('Sources');
project.addLibrary('kha2d');
resolve(project);
