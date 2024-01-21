_mirCamPos = getPosATL mirrorTarget;
_mirCamDir = getDir mirrorTarget;

mirror setObjectTexture [0, "#(argb,2048,2048,1)r2t(piprendertg,1)"];

renderQuality = 2;
_pipcam = "camera" camCreate _mirCamPos;
_pipcam SetDir _mirCamDir;
_pipcam cameraEffect ["External", "Back", "piprendertg"];
_pipcam camSetFov 1.9;



