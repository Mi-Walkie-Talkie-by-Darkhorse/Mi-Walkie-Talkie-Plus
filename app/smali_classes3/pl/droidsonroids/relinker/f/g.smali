.class public Lpl/droidsonroids/relinker/f/g;
.super Lpl/droidsonroids/relinker/f/d;


# instance fields
.field private final g:Lpl/droidsonroids/relinker/f/i;


# direct methods
.method public constructor <init>(ZLpl/droidsonroids/relinker/f/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lpl/droidsonroids/relinker/f/d;-><init>()V

    iput-boolean p1, p0, Lpl/droidsonroids/relinker/f/d;->a:Z

    iput-object p2, p0, Lpl/droidsonroids/relinker/f/g;->g:Lpl/droidsonroids/relinker/f/i;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    const-wide/16 v1, 0x1c

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lpl/droidsonroids/relinker/f/d;->b:J

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->e(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lpl/droidsonroids/relinker/f/d;->c:J

    const-wide/16 v1, 0x2a

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/f/d;->d:I

    const-wide/16 v1, 0x2c

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/f/d;->e:I

    const-wide/16 v1, 0x2e

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/f/d;->f:I

    const-wide/16 v1, 0x30

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Lpl/droidsonroids/relinker/f/i;->b(Ljava/nio/ByteBuffer;J)I

    return-void
.end method


# virtual methods
.method public a(JI)Lpl/droidsonroids/relinker/f/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lpl/droidsonroids/relinker/f/a;

    iget-object v1, p0, Lpl/droidsonroids/relinker/f/g;->g:Lpl/droidsonroids/relinker/f/i;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lpl/droidsonroids/relinker/f/a;-><init>(Lpl/droidsonroids/relinker/f/i;Lpl/droidsonroids/relinker/f/d;JI)V

    return-object v6
.end method

.method public a(J)Lpl/droidsonroids/relinker/f/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpl/droidsonroids/relinker/f/j;

    iget-object v1, p0, Lpl/droidsonroids/relinker/f/g;->g:Lpl/droidsonroids/relinker/f/i;

    invoke-direct {v0, v1, p0, p1, p2}, Lpl/droidsonroids/relinker/f/j;-><init>(Lpl/droidsonroids/relinker/f/i;Lpl/droidsonroids/relinker/f/d;J)V

    return-object v0
.end method

.method public a(I)Lpl/droidsonroids/relinker/f/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpl/droidsonroids/relinker/f/l;

    iget-object v1, p0, Lpl/droidsonroids/relinker/f/g;->g:Lpl/droidsonroids/relinker/f/i;

    invoke-direct {v0, v1, p0, p1}, Lpl/droidsonroids/relinker/f/l;-><init>(Lpl/droidsonroids/relinker/f/i;Lpl/droidsonroids/relinker/f/d;I)V

    return-object v0
.end method
