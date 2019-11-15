.class final Lcom/bumptech/glide/load/engine/s;
.super Ljava/lang/Object;
.source "ResourceCacheKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/c;


# static fields
.field private static final b:Lcom/bumptech/glide/util/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/e",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/bumptech/glide/load/c;

.field private final d:Lcom/bumptech/glide/load/c;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/e;

.field private final i:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/util/e;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/e;-><init>(I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/s;->b:Lcom/bumptech/glide/util/e;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/h;Ljava/lang/Class;Lcom/bumptech/glide/load/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Lcom/bumptech/glide/load/h",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    iput p3, p0, Lcom/bumptech/glide/load/engine/s;->e:I

    iput p4, p0, Lcom/bumptech/glide/load/engine/s;->f:I

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    return-void
.end method

.method private a()[B
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/s;->b:Lcom/bumptech/glide/util/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/s;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/s;->b:Lcom/bumptech/glide/util/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->e:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->f:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/c;->a(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/c;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/h;->a(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/e;->a(Ljava/security/MessageDigest;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/s;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/load/engine/s;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/s;

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->f:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/s;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->e:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/s;->e:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    invoke-interface {v1}, Lcom/bumptech/glide/load/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    invoke-interface {v1}, Lcom/bumptech/glide/load/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->c:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->d:Lcom/bumptech/glide/load/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/s;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->i:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/s;->h:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
