.class Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
.super Ljava/io/InputStream;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/GEMFFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GEMFInputStream"
.end annotation


# instance fields
.field raf:Ljava/io/RandomAccessFile;

.field remainingBytes:I

.field final synthetic this$0:Lorg/osmdroid/util/GEMFFile;


# direct methods
.method constructor <init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->this$0:Lorg/osmdroid/util/GEMFFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    iput p5, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "End of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->raf:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    if-le p3, v1, :cond_0

    iget p3, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->remainingBytes:I

    return v0
.end method

.method public skip(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
