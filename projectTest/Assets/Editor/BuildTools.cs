using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public static class BuildTools
{
    [MenuItem("Build/Build APK")]
    public static void BuildApk()
    {
        BuildPlayerOptions opt = new BuildPlayerOptions();
        opt.scenes = GetScenePath();
        opt.locationPathName = "Bin/release.apk";
        opt.target = BuildTarget.Android;
        opt.options = BuildOptions.None;

        BuildPipeline.BuildPlayer(opt);

        Debug.Log("Build App Done!");
    }

    public static string[] GetScenePath()
    {
        EditorBuildSettingsScene[] scenes = EditorBuildSettings.scenes;

        List<string> ls = new List<string>();
        foreach (EditorBuildSettingsScene scene in scenes)
        {
            ls.Add(scene.path);
        }

        return ls.ToArray();
    }
}
