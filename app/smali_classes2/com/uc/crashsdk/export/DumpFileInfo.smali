.class public Lcom/uc/crashsdk/export/DumpFileInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDeleteAfterDump:Z

.field public mFileTobeDump:Ljava/lang/String;

.field public mIsEncrypted:Z

.field public mLogType:I

.field public mWriteCategory:Z


# direct methods
.method public constructor <init>(Lcom/uc/crashsdk/export/DumpFileInfo;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 11
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 12
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    .line 14
    iget v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    iput v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    .line 15
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    .line 16
    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 17
    iget-boolean p1, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iput-boolean p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    .line 4
    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    .line 5
    iput-object p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    return-void
.end method
