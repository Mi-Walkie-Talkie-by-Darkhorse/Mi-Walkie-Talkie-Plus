.class public final enum Lcom/umeng/analytics/pro/h$a;
.super Ljava/lang/Enum;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/analytics/pro/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/analytics/pro/h$a;

.field public static final enum b:Lcom/umeng/analytics/pro/h$a;

.field public static final enum c:Lcom/umeng/analytics/pro/h$a;

.field public static final enum d:Lcom/umeng/analytics/pro/h$a;

.field public static final enum e:Lcom/umeng/analytics/pro/h$a;

.field public static final enum f:Lcom/umeng/analytics/pro/h$a;

.field private static final synthetic g:[Lcom/umeng/analytics/pro/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/h$a;

    const-string v1, "AUTOPAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/pro/h$a;->a:Lcom/umeng/analytics/pro/h$a;

    .line 2
    new-instance v1, Lcom/umeng/analytics/pro/h$a;

    const-string v3, "PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/umeng/analytics/pro/h$a;->b:Lcom/umeng/analytics/pro/h$a;

    .line 3
    new-instance v3, Lcom/umeng/analytics/pro/h$a;

    const-string v5, "BEGIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/analytics/pro/h$a;->c:Lcom/umeng/analytics/pro/h$a;

    .line 4
    new-instance v5, Lcom/umeng/analytics/pro/h$a;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    .line 5
    new-instance v7, Lcom/umeng/analytics/pro/h$a;

    const-string v9, "NEWSESSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/umeng/analytics/pro/h$a;->e:Lcom/umeng/analytics/pro/h$a;

    .line 6
    new-instance v9, Lcom/umeng/analytics/pro/h$a;

    const-string v11, "INSTANTSESSIONBEGIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/umeng/analytics/pro/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/umeng/analytics/pro/h$a;->f:Lcom/umeng/analytics/pro/h$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/umeng/analytics/pro/h$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/umeng/analytics/pro/h$a;->g:[Lcom/umeng/analytics/pro/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/pro/h$a;
    .locals 1

    .line 1
    const-class v0, Lcom/umeng/analytics/pro/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/h$a;

    return-object p0
.end method

.method public static values()[Lcom/umeng/analytics/pro/h$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->g:[Lcom/umeng/analytics/pro/h$a;

    invoke-virtual {v0}, [Lcom/umeng/analytics/pro/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/pro/h$a;

    return-object v0
.end method
