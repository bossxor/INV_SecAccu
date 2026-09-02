.class public final Lcom/secaccu/clock/ServerClock$Snapshot;
.super Ljava/lang/Object;
.source "ServerClock.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/secaccu/clock/ServerClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003JE\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/secaccu/clock/ServerClock$Snapshot;",
        "",
        "serverNowMs",
        "",
        "offsetMs",
        "errorMs",
        "rttMs",
        "siteName",
        "",
        "mode",
        "(DDDDLjava/lang/String;Ljava/lang/String;)V",
        "getErrorMs",
        "()D",
        "getMode",
        "()Ljava/lang/String;",
        "getOffsetMs",
        "getRttMs",
        "getServerNowMs",
        "getSiteName",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final errorMs:D

.field private final mode:Ljava/lang/String;

.field private final offsetMs:D

.field private final rttMs:D

.field private final serverNowMs:D

.field private final siteName:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDDDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverNowMs"    # D
    .param p3, "offsetMs"    # D
    .param p5, "errorMs"    # D
    .param p7, "rttMs"    # D
    .param p9, "siteName"    # Ljava/lang/String;
    .param p10, "mode"    # Ljava/lang/String;

    const-string v0, "siteName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    .line 40
    iput-wide p3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    .line 41
    iput-wide p5, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    .line 42
    iput-wide p7, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    .line 43
    iput-object p9, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    .line 44
    iput-object p10, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static synthetic copy$default(Lcom/secaccu/clock/ServerClock$Snapshot;DDDDLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/secaccu/clock/ServerClock$Snapshot;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p11, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p11, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, p11, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, p11, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p9

    :goto_4
    and-int/lit8 v10, p11, 0x20

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v10, p10

    :goto_5
    move-wide p1, v1

    move-wide p3, v3

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-virtual/range {p0 .. p10}, Lcom/secaccu/clock/ServerClock$Snapshot;->copy(DDDDLjava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/ServerClock$Snapshot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(DDDDLjava/lang/String;Ljava/lang/String;)Lcom/secaccu/clock/ServerClock$Snapshot;
    .locals 14

    const-string v0, "siteName"

    move-object/from16 v12, p9

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    move-object/from16 v13, p10

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/secaccu/clock/ServerClock$Snapshot;

    move-object v1, v0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/secaccu/clock/ServerClock$Snapshot;-><init>(DDDDLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/secaccu/clock/ServerClock$Snapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/secaccu/clock/ServerClock$Snapshot;

    iget-wide v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    iget-wide v5, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    iget-object v4, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    iget-object v1, v1, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getErrorMs()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    return-wide v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffsetMs()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    return-wide v0
.end method

.method public final getRttMs()D
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    return-wide v0
.end method

.method public final getServerNowMs()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    return-wide v0
.end method

.method public final getSiteName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->serverNowMs:D

    iget-wide v2, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->offsetMs:D

    iget-wide v4, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->errorMs:D

    iget-wide v6, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->rttMs:D

    iget-object v8, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->siteName:Ljava/lang/String;

    iget-object v9, p0, Lcom/secaccu/clock/ServerClock$Snapshot;->mode:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Snapshot(serverNowMs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rttMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
