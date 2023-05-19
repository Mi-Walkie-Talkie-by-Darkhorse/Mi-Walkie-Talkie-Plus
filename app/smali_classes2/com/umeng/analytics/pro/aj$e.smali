.class public final enum Lcom/umeng/analytics/pro/aj$e;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/analytics/pro/ax;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/pro/aj$e;",
        ">;",
        "Lcom/umeng/analytics/pro/ax;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum b:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum c:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum d:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum e:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum f:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum g:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum h:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum i:Lcom/umeng/analytics/pro/aj$e;

.field public static final enum j:Lcom/umeng/analytics/pro/aj$e;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/pro/aj$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/umeng/analytics/pro/aj$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/aj$e;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "version"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/aj$e;->a:Lcom/umeng/analytics/pro/aj$e;

    new-instance v1, Lcom/umeng/analytics/pro/aj$e;

    const-string v4, "ADDRESS"

    const/4 v5, 0x2

    const-string v6, "address"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v1, Lcom/umeng/analytics/pro/aj$e;->b:Lcom/umeng/analytics/pro/aj$e;

    new-instance v4, Lcom/umeng/analytics/pro/aj$e;

    const-string v6, "SIGNATURE"

    const/4 v7, 0x3

    const-string v8, "signature"

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v4, Lcom/umeng/analytics/pro/aj$e;->c:Lcom/umeng/analytics/pro/aj$e;

    new-instance v6, Lcom/umeng/analytics/pro/aj$e;

    const-string v8, "SERIAL_NUM"

    const/4 v9, 0x4

    const-string v10, "serial_num"

    invoke-direct {v6, v8, v7, v9, v10}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v6, Lcom/umeng/analytics/pro/aj$e;->d:Lcom/umeng/analytics/pro/aj$e;

    .line 2
    new-instance v8, Lcom/umeng/analytics/pro/aj$e;

    const-string v10, "TS_SECS"

    const/4 v11, 0x5

    const-string v12, "ts_secs"

    invoke-direct {v8, v10, v9, v11, v12}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v8, Lcom/umeng/analytics/pro/aj$e;->e:Lcom/umeng/analytics/pro/aj$e;

    new-instance v10, Lcom/umeng/analytics/pro/aj$e;

    const-string v12, "LENGTH"

    const/4 v13, 0x6

    const-string v14, "length"

    invoke-direct {v10, v12, v11, v13, v14}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v10, Lcom/umeng/analytics/pro/aj$e;->f:Lcom/umeng/analytics/pro/aj$e;

    new-instance v12, Lcom/umeng/analytics/pro/aj$e;

    const-string v14, "ENTITY"

    const/4 v15, 0x7

    const-string v11, "entity"

    invoke-direct {v12, v14, v13, v15, v11}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v12, Lcom/umeng/analytics/pro/aj$e;->g:Lcom/umeng/analytics/pro/aj$e;

    .line 3
    new-instance v11, Lcom/umeng/analytics/pro/aj$e;

    const-string v14, "GUID"

    const/16 v13, 0x8

    const-string v9, "guid"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v11, Lcom/umeng/analytics/pro/aj$e;->h:Lcom/umeng/analytics/pro/aj$e;

    new-instance v9, Lcom/umeng/analytics/pro/aj$e;

    const-string v14, "CHECKSUM"

    const/16 v15, 0x9

    const-string v7, "checksum"

    invoke-direct {v9, v14, v13, v15, v7}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v9, Lcom/umeng/analytics/pro/aj$e;->i:Lcom/umeng/analytics/pro/aj$e;

    new-instance v7, Lcom/umeng/analytics/pro/aj$e;

    const-string v14, "CODEX"

    const/16 v13, 0xa

    const-string v5, "codex"

    invoke-direct {v7, v14, v15, v13, v5}, Lcom/umeng/analytics/pro/aj$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v7, Lcom/umeng/analytics/pro/aj$e;->j:Lcom/umeng/analytics/pro/aj$e;

    new-array v5, v13, [Lcom/umeng/analytics/pro/aj$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v11, v5, v0

    const/16 v0, 0x8

    aput-object v9, v5, v0

    aput-object v7, v5, v15

    .line 4
    sput-object v5, Lcom/umeng/analytics/pro/aj$e;->n:[Lcom/umeng/analytics/pro/aj$e;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/aj$e;->k:Ljava/util/Map;

    .line 6
    const-class v0, Lcom/umeng/analytics/pro/aj$e;

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

    check-cast v1, Lcom/umeng/analytics/pro/aj$e;

    .line 7
    sget-object v2, Lcom/umeng/analytics/pro/aj$e;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/aj$e;->b()Ljava/lang/String;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-short p3, p0, Lcom/umeng/analytics/pro/aj$e;->l:S

    .line 3
    iput-object p4, p0, Lcom/umeng/analytics/pro/aj$e;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/umeng/analytics/pro/aj$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->j:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->i:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->h:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->g:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->f:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->e:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->d:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->c:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->b:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/umeng/analytics/pro/aj$e;->a:Lcom/umeng/analytics/pro/aj$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj$e;
    .locals 1

    .line 11
    sget-object v0, Lcom/umeng/analytics/pro/aj$e;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/aj$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/analytics/pro/aj$e;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/umeng/analytics/pro/aj$e;->a(I)Lcom/umeng/analytics/pro/aj$e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj$e;
    .locals 1

    .line 1
    const-class v0, Lcom/umeng/analytics/pro/aj$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/aj$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/pro/aj$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/aj$e;->n:[Lcom/umeng/analytics/pro/aj$e;

    invoke-virtual {v0}, [Lcom/umeng/analytics/pro/aj$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/pro/aj$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 12
    iget-short v0, p0, Lcom/umeng/analytics/pro/aj$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/aj$e;->m:Ljava/lang/String;

    return-object v0
.end method
