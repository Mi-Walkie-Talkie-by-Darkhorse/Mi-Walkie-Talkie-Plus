.class final Lcom/amap/api/col/l3/hs$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/hs;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/amap/api/col/l3/hs$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/hs;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/hs$c;->a:Lcom/amap/api/col/l3/hs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/amap/api/col/l3/hs$c;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/amap/api/col/l3/hs;->f(Lcom/amap/api/col/l3/hs;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/amap/api/col/l3/hs$c;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/hs;Ljava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/hs$c;-><init>(Lcom/amap/api/col/l3/hs;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hs$c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/col/l3/hs$c;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hs$c;Lcom/amap/api/col/l3/hs$a;)Lcom/amap/api/col/l3/hs$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/hs$c;->e:Lcom/amap/api/col/l3/hs$a;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hs$c;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    iget-object v1, p0, Lcom/amap/api/col/l3/hs$c;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->f(Lcom/amap/api/col/l3/hs;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/hs$c;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-static {p1}, Lcom/amap/api/col/l3/hs$c;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/amap/api/col/l3/hs$c;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/hs$c;)Z
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/hs$c;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/hs$c;)Lcom/amap/api/col/l3/hs$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/hs$c;->e:Lcom/amap/api/col/l3/hs$a;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3/hs$c;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/hs$c;->c:[J

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/col/l3/hs$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/hs$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/hs$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/hs$c;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/hs$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/col/l3/hs$c;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)Ljava/io/File;
    .locals 4

    .line 11
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3/hs$c;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->g(Lcom/amap/api/col/l3/hs;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3/hs$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/hs$c;->c:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/io/File;
    .locals 4

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3/hs$c;->a:Lcom/amap/api/col/l3/hs;

    invoke-static {v1}, Lcom/amap/api/col/l3/hs;->g(Lcom/amap/api/col/l3/hs;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3/hs$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method