.class public final enum Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;
.super Ljava/lang/Enum;
.source "ConferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicViewPolicyT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

.field public static final enum KShowEvenIfStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

.field public static final enum KShowIfNotStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    const-string v1, "KShowIfNotStaticallyViewed"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->KShowIfNotStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    const-string v1, "KShowEvenIfStaticallyViewed"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->KShowEvenIfStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    sget-object v1, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->KShowIfNotStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->KShowEvenIfStaticallyViewed:Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->$VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;
    .locals 1

    const-class v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;
    .locals 1

    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->$VALUES:[Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    invoke-virtual {v0}, [Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;

    return-object v0
.end method
