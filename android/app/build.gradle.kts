plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.untitled"
    // এখানে ৩৬ করে দেওয়া হয়েছে আপনার এরর অনুযায়ী
    compileSdk = 36

    defaultConfig {
        applicationId = "com.example.untitled"
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = 1
        versionName = "1.0"
    }

    compileOptions {
        // এখানে এরর মেলাতে ২১ করা হয়েছে
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }

    kotlinOptions {
        // এখানেও ২১ করে দিন
        jvmTarget = "21"
    }
}

flutter {
    source = "../../"
}
