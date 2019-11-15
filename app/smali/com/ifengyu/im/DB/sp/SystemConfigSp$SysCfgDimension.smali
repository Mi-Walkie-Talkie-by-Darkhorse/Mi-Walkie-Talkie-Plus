.class public final enum Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;
.super Ljava/lang/Enum;
.source "SystemConfigSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/DB/sp/SystemConfigSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysCfgDimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum DEFAULTINPUTMETHOD:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum DISCOVERYDATA:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum DISCOVERYURI:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum KEYBOARDHEIGHT:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum LOGINSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

.field public static final enum MSFSSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "KEYBOARDHEIGHT"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->KEYBOARDHEIGHT:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "DEFAULTINPUTMETHOD"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DEFAULTINPUTMETHOD:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "DISCOVERYURI"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DISCOVERYURI:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "LOGINSERVER"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->LOGINSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "DISCOVERYDATA"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DISCOVERYDATA:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    new-instance v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const-string v1, "MSFSSERVER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->MSFSSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    sget-object v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->KEYBOARDHEIGHT:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DEFAULTINPUTMETHOD:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DISCOVERYURI:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->LOGINSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->DISCOVERYDATA:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->MSFSSERVER:Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->$VALUES:[Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;
    .locals 1

    const-class v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->$VALUES:[Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    invoke-virtual {v0}, [Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/DB/sp/SystemConfigSp$SysCfgDimension;

    return-object v0
.end method
