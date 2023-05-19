.class public final enum Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;
.super Ljava/lang/Enum;
.source "ETStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/ETStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USER_CONFIGURE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum c:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum d:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum e:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum f:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum g:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum h:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum i:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum j:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum k:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field public static final enum l:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

.field private static final synthetic m:[Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v1, "LOW_POWER"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->b:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 2
    new-instance v1, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v3, "DEFAULT_GROUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->c:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 3
    new-instance v3, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v5, "LOCATION_STATUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->d:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 4
    new-instance v5, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v7, "LOCATION_PERIOD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->e:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 5
    new-instance v7, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v9, "AUTO_ANSWER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->f:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 6
    new-instance v9, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v11, "AUDIO_ENABLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->g:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 7
    new-instance v11, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v13, "ALLOW_INVITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->h:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 8
    new-instance v13, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v15, "ALLOW_INVITED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->i:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 9
    new-instance v15, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v14, "ALLOW_SEND_BROADCAST"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->j:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 10
    new-instance v14, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v12, "ALLOW_VIEW_VIDEO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->k:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    .line 11
    new-instance v12, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const-string v10, "DEVINFO_ENABLED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->l:Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 12
    sput-object v10, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->m:[Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->m:[Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    invoke-virtual {v0}, [Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/ETStatusCode$USER_CONFIGURE_TYPE;->a:I

    return v0
.end method
