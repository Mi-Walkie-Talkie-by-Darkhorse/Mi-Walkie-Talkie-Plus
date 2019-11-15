.class public final Lcom/tencent/bugly/mimsg/proguard/d;
.super Lcom/tencent/bugly/mimsg/proguard/c;
.source "BUGLY"


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/tencent/bugly/mimsg/proguard/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/d;->f:Ljava/util/HashMap;

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/d;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/proguard/c;-><init>()V

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/f;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/proguard/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->a:S

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "put name can not startwith . , now is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/bugly/mimsg/proguard/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a([B)V
    .locals 4

    const/4 v1, 0x4

    array-length v0, p1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/i;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/tencent/bugly/mimsg/proguard/i;-><init>([BI)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/mimsg/proguard/f;->a(Lcom/tencent/bugly/mimsg/proguard/i;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-short v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->a:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/proguard/f;->e:[B

    invoke-direct {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;-><init>([B)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->f:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->f:Ljava/util/HashMap;

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->f:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->d:Ljava/util/HashMap;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v1, v1, Lcom/tencent/bugly/mimsg/proguard/f;->e:[B

    invoke-direct {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;-><init>([B)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->g:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/d;->g:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/tencent/bugly/mimsg/proguard/d;->g:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()[B
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-short v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->a:S

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "servantName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "funcName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/proguard/f;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->d:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/j;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/j;-><init>(I)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iget-short v1, v1, Lcom/tencent/bugly/mimsg/proguard/f;->a:S

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/util/Map;I)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/mimsg/proguard/f;->e:[B

    new-instance v0, Lcom/tencent/bugly/mimsg/proguard/j;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/j;-><init>(I)V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/mimsg/proguard/f;->a(Lcom/tencent/bugly/mimsg/proguard/j;)V

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/proguard/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/bugly/mimsg/proguard/c;->b()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->a:S

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->b:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iput-object p1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->c:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/d;->e:Lcom/tencent/bugly/mimsg/proguard/f;

    iput-object p1, v0, Lcom/tencent/bugly/mimsg/proguard/f;->d:Ljava/lang/String;

    return-void
.end method
