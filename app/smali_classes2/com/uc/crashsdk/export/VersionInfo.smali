.class public Lcom/uc/crashsdk/export/VersionInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mBuildId:Ljava/lang/String;

.field public mSubVersion:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uc/crashsdk/export/VersionInfo;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    iput-object p1, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    return-void
.end method
