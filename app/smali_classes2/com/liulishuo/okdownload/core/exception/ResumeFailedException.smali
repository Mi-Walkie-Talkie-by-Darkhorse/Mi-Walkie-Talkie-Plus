.class public Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;
.super Ljava/io/IOException;


# instance fields
.field private final resumeFailedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume failed because of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;->resumeFailedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-void
.end method


# virtual methods
.method public getResumeFailedCause()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;->resumeFailedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object v0
.end method
