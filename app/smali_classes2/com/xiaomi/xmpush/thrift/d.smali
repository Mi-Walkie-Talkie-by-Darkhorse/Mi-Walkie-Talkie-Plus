.class public Lcom/xiaomi/xmpush/thrift/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/thrift/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/xmpush/thrift/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/thrift/a",
        "<",
        "Lcom/xiaomi/xmpush/thrift/d;",
        "Lcom/xiaomi/xmpush/thrift/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/xmpush/thrift/d$a;",
            "Lorg/apache/thrift/meta_data/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lorg/apache/thrift/protocol/j;

.field private static final d:Lorg/apache/thrift/protocol/b;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x1

    new-instance v0, Lorg/apache/thrift/protocol/j;

    const-string v1, "ClientUploadData"

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/d;->c:Lorg/apache/thrift/protocol/j;

    new-instance v0, Lorg/apache/thrift/protocol/b;

    const-string v1, "uploadDataItems"

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/thrift/protocol/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/d;->d:Lorg/apache/thrift/protocol/b;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/xmpush/thrift/d$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/xmpush/thrift/d$a;->a:Lcom/xiaomi/xmpush/thrift/d$a;

    new-instance v2, Lorg/apache/thrift/meta_data/b;

    const-string v3, "uploadDataItems"

    new-instance v4, Lorg/apache/thrift/meta_data/d;

    new-instance v5, Lorg/apache/thrift/meta_data/g;

    const/16 v6, 0xc

    const-class v7, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v5, v6, v7}, Lorg/apache/thrift/meta_data/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/thrift/meta_data/d;-><init>(BLorg/apache/thrift/meta_data/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/thrift/meta_data/b;-><init>(Ljava/lang/String;BLorg/apache/thrift/meta_data/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/xmpush/thrift/d;->b:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/d;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/d;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/thrift/meta_data/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/apache/thrift/protocol/e;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->g()Lorg/apache/thrift/protocol/j;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->i()Lorg/apache/thrift/protocol/b;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/thrift/protocol/b;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->h()V

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->c()V

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

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->m()Lorg/apache/thrift/protocol/c;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/thrift/protocol/c;->b:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/thrift/protocol/c;->b:I

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/e;->a(Lorg/apache/thrift/protocol/e;)V

    iget-object v3, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->n()V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lorg/apache/thrift/protocol/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/thrift/protocol/h;->a(Lorg/apache/thrift/protocol/e;B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/xiaomi/xmpush/thrift/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/d;->b()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/xmpush/thrift/d;)I
    .locals 2

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
    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/thrift/b;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/apache/thrift/protocol/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->c()V

    sget-object v0, Lcom/xiaomi/xmpush/thrift/d;->c:Lorg/apache/thrift/protocol/j;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/j;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/d;->d:Lorg/apache/thrift/protocol/b;

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/b;)V

    new-instance v0, Lorg/apache/thrift/protocol/c;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/protocol/c;-><init>(BI)V

    invoke-virtual {p1, v0}, Lorg/apache/thrift/protocol/e;->a(Lorg/apache/thrift/protocol/c;)V

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/e;->b(Lorg/apache/thrift/protocol/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->e()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->b()V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->c()V

    invoke-virtual {p1}, Lorg/apache/thrift/protocol/e;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/protocol/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'uploadDataItems\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xiaomi/xmpush/thrift/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/d;->b(Lcom/xiaomi/xmpush/thrift/d;)I

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
    instance-of v1, p1, Lcom/xiaomi/xmpush/thrift/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/xmpush/thrift/d;

    invoke-virtual {p0, p1}, Lcom/xiaomi/xmpush/thrift/d;->a(Lcom/xiaomi/xmpush/thrift/d;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientUploadData("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uploadDataItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
