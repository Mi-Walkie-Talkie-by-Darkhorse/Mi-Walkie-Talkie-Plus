.class public final enum Lcom/xiaomi/xmpush/thrift/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/xmpush/thrift/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/xmpush/thrift/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum b:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum c:Lcom/xiaomi/xmpush/thrift/j$a;

.field public static final enum d:Lcom/xiaomi/xmpush/thrift/j$a;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/xmpush/thrift/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lcom/xiaomi/xmpush/thrift/j$a;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "LOCATION"

    const-string v2, "location"

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->a:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "PROVIDER"

    const-string v2, "provider"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->b:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "PERIOD"

    const-string v2, "period"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->c:Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/j$a;

    const-string v1, "ACCURACY"

    const-string v2, "accuracy"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/xiaomi/xmpush/thrift/j$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->d:Lcom/xiaomi/xmpush/thrift/j$a;

    new-array v0, v7, [Lcom/xiaomi/xmpush/thrift/j$a;

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->a:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->b:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->c:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/xmpush/thrift/j$a;->d:Lcom/xiaomi/xmpush/thrift/j$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->h:[Lcom/xiaomi/xmpush/thrift/j$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->e:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/j$a;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/j$a;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/j$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/xiaomi/xmpush/thrift/j$a;->f:S

    iput-object p4, p0, Lcom/xiaomi/xmpush/thrift/j$a;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j$a;
    .locals 1

    const-class v0, Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/j$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/xmpush/thrift/j$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/j$a;->h:[Lcom/xiaomi/xmpush/thrift/j$a;

    invoke-virtual {v0}, [Lcom/xiaomi/xmpush/thrift/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/xmpush/thrift/j$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/xmpush/thrift/j$a;->g:Ljava/lang/String;

    return-object v0
.end method
