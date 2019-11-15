.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# static fields
.field private static final serialVersionUID:J = 0xbdbbd5fa1b9L


# instance fields
.field public final a:Lpl/droidsonroids/gif/GifError;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    invoke-static {p1}, Lpl/droidsonroids/gif/GifError;->a(I)Lpl/droidsonroids/gif/GifError;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->a:Lpl/droidsonroids/gif/GifError;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifIOException;->b:Ljava/lang/String;

    return-void
.end method

.method static a(I)Lpl/droidsonroids/gif/GifIOException;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lpl/droidsonroids/gif/GifError;->a:Lpl/droidsonroids/gif/GifError;

    iget v1, v1, Lpl/droidsonroids/gif/GifError;->w:I

    if-ne p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lpl/droidsonroids/gif/GifIOException;

    invoke-direct {v1, p0, v0}, Lpl/droidsonroids/gif/GifIOException;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifIOException;->a:Lpl/droidsonroids/gif/GifError;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifError;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->a:Lpl/droidsonroids/gif/GifError;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifError;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifIOException;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
