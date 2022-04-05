.class public Lcom/uc/crashsdk/export/CustomLogInfo;
.super Ljava/lang/Object;


# instance fields
.field public mAddBuildId:Z

.field public mAddFooter:Z

.field public mAddHeader:Z

.field public mAddLogcat:Z

.field public mAddThreadsDump:Z

.field public mCachedInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mData:Ljava/lang/StringBuffer;

.field public mDumpFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpTids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLogType:Ljava/lang/String;

.field public mUploadNow:Z


# direct methods
.method public constructor <init>(Lcom/uc/crashsdk/export/CustomLogInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddHeader:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddFooter:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddLogcat:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mUploadNow:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddThreadsDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mAddBuildId:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpFiles:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCachedInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mDumpTids:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mLogType:Ljava/lang/String;

    return-void
.end method
