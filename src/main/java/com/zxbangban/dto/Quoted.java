package com.zxbangban.dto;

import org.springframework.stereotype.Repository;

import java.math.BigDecimal;

@Repository
public class Quoted {
    private BigDecimal materialCost;
    private BigDecimal labourCost;
    private BigDecimal designCost;
    private BigDecimal serviceCost;
    private BigDecimal totalCost;

    public BigDecimal getMaterialCost() {
        return materialCost;
    }

    public void setMaterialCost(BigDecimal materialCost) {
        this.materialCost = materialCost;
    }

    public BigDecimal getLabourCost() {
        return labourCost;
    }

    public void setLabourCost(BigDecimal labourCost) {
        this.labourCost = labourCost;
    }

    public BigDecimal getDesignCost() {
        return designCost;
    }

    public void setDesignCost(BigDecimal designCost) {
        this.designCost = designCost;
    }

    public BigDecimal getServiceCost() {
        return serviceCost;
    }

    public void setServiceCost(BigDecimal serviceCost) {
        this.serviceCost = serviceCost;
    }

    public BigDecimal getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(BigDecimal totalCost) {
        this.totalCost = totalCost;
    }

    public Quoted() {
    }

    public Quoted(BigDecimal materialCost, BigDecimal labourCost, BigDecimal designCost, BigDecimal serviceCost, BigDecimal totalCost) {
        this.materialCost = materialCost;
        this.labourCost = labourCost;
        this.designCost = designCost;
        this.serviceCost = serviceCost;
        this.totalCost = totalCost;
    }

    @Override
    public String toString() {
        return "Quoted{" +
                "materialCost=" + materialCost +
                ", labourCost=" + labourCost +
                ", designCost=" + designCost +
                ", serviceCost=" + serviceCost +
                ", totalCost=" + totalCost +
                '}';
    }
}
