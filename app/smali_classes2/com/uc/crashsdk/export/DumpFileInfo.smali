.class public Lcom/uc/crashsdk/export/DumpFileInfo;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iget-object v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iput-object v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iget v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    iput v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    iget-boolean v0, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iget-boolean p1, p1, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iput-boolean p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mWriteCategory:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mDeleteAfterDump:Z

    iput-boolean v0, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mIsEncrypted:Z

    iput-object p1, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mFileTobeDump:Ljava/lang/String;

    iput p3, p0, Lcom/uc/crashsdk/export/DumpFileInfo;->mLogType:I

    return-void
.end method
