.class public final enum Lcom/shanlitech/et/web/ServerType;
.super Ljava/lang/Enum;
.source "ServerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/web/ServerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/shanlitech/et/web/ServerType;

.field public static final enum b:Lcom/shanlitech/et/web/ServerType;

.field public static final enum c:Lcom/shanlitech/et/web/ServerType;

.field public static final enum d:Lcom/shanlitech/et/web/ServerType;

.field public static final enum e:Lcom/shanlitech/et/web/ServerType;

.field public static final enum f:Lcom/shanlitech/et/web/ServerType;

.field public static final enum g:Lcom/shanlitech/et/web/ServerType;

.field public static final enum h:Lcom/shanlitech/et/web/ServerType;

.field public static final enum i:Lcom/shanlitech/et/web/ServerType;

.field public static final enum j:Lcom/shanlitech/et/web/ServerType;

.field private static final synthetic k:[Lcom/shanlitech/et/web/ServerType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/ServerType;

    const-string v1, "SERVER_ACCOUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/web/ServerType;->a:Lcom/shanlitech/et/web/ServerType;

    new-instance v1, Lcom/shanlitech/et/web/ServerType;

    const-string v3, "SERVER_IM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/web/ServerType;->b:Lcom/shanlitech/et/web/ServerType;

    new-instance v3, Lcom/shanlitech/et/web/ServerType;

    const-string v5, "SERVER_FILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/web/ServerType;->c:Lcom/shanlitech/et/web/ServerType;

    new-instance v5, Lcom/shanlitech/et/web/ServerType;

    const-string v7, "SERVER_LBS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/web/ServerType;->d:Lcom/shanlitech/et/web/ServerType;

    new-instance v7, Lcom/shanlitech/et/web/ServerType;

    const-string v9, "SERVER_ORG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/web/ServerType;->e:Lcom/shanlitech/et/web/ServerType;

    new-instance v9, Lcom/shanlitech/et/web/ServerType;

    const-string v11, "SERVER_DISPATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/web/ServerType;->f:Lcom/shanlitech/et/web/ServerType;

    new-instance v11, Lcom/shanlitech/et/web/ServerType;

    const-string v13, "SERVER_HISTORY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shanlitech/et/web/ServerType;->g:Lcom/shanlitech/et/web/ServerType;

    new-instance v13, Lcom/shanlitech/et/web/ServerType;

    const-string v15, "SERVER_VIDEO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shanlitech/et/web/ServerType;->h:Lcom/shanlitech/et/web/ServerType;

    new-instance v15, Lcom/shanlitech/et/web/ServerType;

    const-string v14, "SERVER_GROUP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shanlitech/et/web/ServerType;->i:Lcom/shanlitech/et/web/ServerType;

    new-instance v14, Lcom/shanlitech/et/web/ServerType;

    const-string v12, "SERVER_USER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shanlitech/et/web/ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shanlitech/et/web/ServerType;->j:Lcom/shanlitech/et/web/ServerType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/shanlitech/et/web/ServerType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 2
    sput-object v12, Lcom/shanlitech/et/web/ServerType;->k:[Lcom/shanlitech/et/web/ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/web/ServerType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/web/ServerType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/web/ServerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/ServerType;->k:[Lcom/shanlitech/et/web/ServerType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/web/ServerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/web/ServerType;

    return-object v0
.end method
