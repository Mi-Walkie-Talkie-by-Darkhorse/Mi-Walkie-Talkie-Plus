.class public Lcom/xiaomi/xmpush/thrift/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/xmpush/thrift/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/a",
        "<",
        "Lcom/xiaomi/xmpush/thrift/e;",
        "Lcom/xiaomi/xmpush/thrift/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e$a;",
            "Lorg/apache/thrift/meta_data/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lorg/apache/thrift/protocol/j;

.field private static final m:Lorg/apache/thrift/protocol/b;

.field private static final n:Lorg/apache/thrift/protocol/b;

.field private static final o:Lorg/apache/thrift/protocol/b;

.field private static final p:Lorg/apache/thrift/protocol/b;

.field private static final q:Lorg/apache/thrift/protocol/b;

.field private static final r:Lorg/apache/thrift/protocol/b;

.field private static final s:Lorg/apache/thrift/protocol/b;

.field private static final t:Lorg/apache/thrift/protocol/b;

.field private static final u:Lorg/apache/thrift/protocol/b;

.field private static final v:Lorg/apache/thrift/protocol/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xd

    const/16 v5, 0xa

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lorg/apache/thrift/protocol/j;

    const-string v1, "ClientUploadDataItem"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->l:Lorg/apache/thrift/protocol/j;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "channel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->m:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "data"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->n:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "name"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->o:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "counter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->p:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "timestamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->q:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "fromSdk"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->r:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "category"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->s:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "sourcePackage"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->t:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "id"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->u:Lorg/apache/thrift/protocol/b;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "extra"

    invoke-direct {v0, v1, v9, v5}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->v:Lorg/apache/thrift/protocol/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/e$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->a:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "channel"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->b:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "data"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->c:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "name"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->d:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "counter"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->e:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "timestamp"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v5}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->f:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "fromSdk"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v8}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->g:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "category"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->h:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "sourcePackage"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->i:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "id"

    new-instance v4, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v4, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e$a;->j:Lcom/xiaomi/xmpush/thrift/e$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "extra"

    new-instance v4, Lorg/apache/thrift/meta_data/e;

    new-instance v5, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v5, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    new-instance v6, Lorg/apache/thrift/meta_data/c;

    invoke-direct {v6, v7}, Lorg/apache/thrift/meta_data/c;-><init>(B)V

    invoke-direct {v4, v9, v5, v6}, Lorg/apache/thrift/meta_data/e;-><init>(BLorg/apache/thrift/meta_data/c;Lorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/e;->k:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/e;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/e;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/xmpush/thrift/e;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/e;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/apache/thrift/protocol/e;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/16 v5, 0xb

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->g()Lorg/apache/thrift/protocol/j;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->i()Lorg/apache/thrift/protocol/b;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->o()V

    return-void

    :cond_0
    iget-short v1, v0, Lorg/apache/thrift/protocol/b;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    :goto_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->j()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_1

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v7, :cond_4

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/e;->a(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v7, :cond_5

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/e;->b(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    invoke-virtual {p0, v6}, Lcom/xiaomi/xmpush/thrift/e;->d(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_7

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-ne v1, v5, :cond_9

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->k()Lorg/apache/thrift/protocol/d;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lorg/apache/thrift/protocol/d;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/d;->c:I

    if-ge v0, v2, :cond_a

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->w()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->l()V

    goto/16 :goto_1

    :cond_b
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/e;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/e;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    iget-wide v4, p1, Lcom/xiaomi/xmpush/thrift/e;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    if-ne v1, v2, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/e;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/e;->d:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    iget-wide v2, p1, Lcom/xiaomi/xmpush/thrift/e;->e:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/thrift/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    iget-boolean v1, p1, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public b(J)Lcom/xiaomi/xmpush/thrift/e;
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/e;->b(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lorg/apache/thrift/protocol/e;)V
    .locals 3

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->o()V

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->l:Lorg/apache/thrift/protocol/j;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/j;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->m:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->n:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->o:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->p:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/e;->a(J)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->q:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/thrift/protocol/e;->a(J)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->r:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Z)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->s:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->t:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->u:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/xiaomi/xmpush/thrift/e;->v:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    new-instance v0, Lorg/apache/thrift/protocol/d;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/thrift/protocol/d;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/d;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->d()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_a
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/xiaomi/xmpush/thrift/e;
    .locals 1

    iput-boolean p1, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/xmpush/thrift/e;->d(Z)V

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/e;->b(Lcom/xiaomi/xmpush/thrift/e;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/e;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/e;->a(Lcom/xiaomi/xmpush/thrift/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->w:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ClientUploadDataItem("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "channel:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "data:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "counter:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/e;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "timestamp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/xmpush/thrift/e;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "fromSdk:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaomi/xmpush/thrift/e;->f:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->i()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->k()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "sourcePackage:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->m()Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/e;->n()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v1, :cond_10

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v0, "extra:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    if-nez v0, :cond_18

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/e;->j:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_19
    move v1, v0

    goto :goto_5
.end method
