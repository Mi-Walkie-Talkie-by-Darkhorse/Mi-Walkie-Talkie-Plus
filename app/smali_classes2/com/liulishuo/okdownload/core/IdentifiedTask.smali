.class public abstract Lcom/liulishuo/okdownload/core/IdentifiedTask;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_FILE:Ljava/io/File;

.field public static final EMPTY_URL:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liulishuo/okdownload/core/IdentifiedTask;->EMPTY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareIgnoreId(Lcom/liulishuo/okdownload/core/IdentifiedTask;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getParentFile()Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/liulishuo/okdownload/core/IdentifiedTask;->EMPTY_FILE:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getProvidedPathFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getProvidedPathFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getFilename()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public abstract getFilename()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getId()I
.end method

.method public abstract getParentFile()Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getProvidedPathFile()Ljava/io/File;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
