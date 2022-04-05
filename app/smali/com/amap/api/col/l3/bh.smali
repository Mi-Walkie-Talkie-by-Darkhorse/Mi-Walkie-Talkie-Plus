.class Lcom/amap/api/col/l3/bh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/amap/api/col/l3/ha;
    a = "update_item_download_info"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/col/l3/hb;
        a = "mAdcode"
        b = 0x6
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/amap/api/col/l3/hb;
        a = "fileLength"
        b = 0x5
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/col/l3/hb;
        a = "splitter"
        b = 0x2
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/amap/api/col/l3/hb;
        a = "startPos"
        b = 0x5
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/amap/api/col/l3/hb;
        a = "endPos"
        b = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3/bh;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->b:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3/bh;->c:I

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->d:J

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3/bh;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->b:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3/bh;->c:I

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->d:J

    iput-wide v0, p0, Lcom/amap/api/col/l3/bh;->e:J

    iput-object p1, p0, Lcom/amap/api/col/l3/bh;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/amap/api/col/l3/bh;->b:J

    iput p4, p0, Lcom/amap/api/col/l3/bh;->c:I

    iput-wide p5, p0, Lcom/amap/api/col/l3/bh;->d:J

    iput-wide p7, p0, Lcom/amap/api/col/l3/bh;->e:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAdcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
