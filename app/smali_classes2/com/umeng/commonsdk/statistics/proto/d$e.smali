.class public final enum Lcom/umeng/commonsdk/statistics/proto/d$e;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/umeng/analytics/pro/ax;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/proto/d$e;",
        ">;",
        "Lcom/umeng/analytics/pro/ax;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/d$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/umeng/commonsdk/statistics/proto/d$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PROPERTY"

    const-string v4, "property"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v3, 0x2

    const-string v4, "VERSION"

    const-string v5, "version"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    const/4 v4, 0x3

    const-string v5, "CHECKSUM"

    const-string v6, "checksum"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/umeng/commonsdk/statistics/proto/d$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-array v4, v4, [Lcom/umeng/commonsdk/statistics/proto/d$e;

    sget-object v5, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    aput-object v5, v4, v1

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/umeng/commonsdk/statistics/proto/d$e;->g:[Lcom/umeng/commonsdk/statistics/proto/d$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->d:Ljava/util/Map;

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/proto/d$e;

    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/d$e;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->e:S

    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->c:Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0

    :cond_1
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->b:Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0

    :cond_2
    sget-object p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->a:Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 3

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/proto/d$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/d$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    const-class v0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/d$e;
    .locals 1

    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/d$e;->g:[Lcom/umeng/commonsdk/statistics/proto/d$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/d$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/d$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/d$e;->f:Ljava/lang/String;

    return-object v0
.end method
