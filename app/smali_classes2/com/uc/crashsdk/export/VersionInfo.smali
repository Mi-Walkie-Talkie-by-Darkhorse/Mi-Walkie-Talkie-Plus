.class public Lcom/uc/crashsdk/export/VersionInfo;
.super Ljava/lang/Object;


# instance fields
.field public mBuildId:Ljava/lang/String;

.field public mSubVersion:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uc/crashsdk/export/VersionInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    iput-object p1, p0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    return-void
.end method
